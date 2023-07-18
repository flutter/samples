import React, { useEffect, useRef, memo } from 'react'

// The global _flutter namespace
declare var _flutter: any

// global promise is needed to avoid race conditions
// when component is mounted and immediately unmounted,
// e.g. in a React strict mode
let engineInitializerPromise: Promise<any> | null = null

interface FlutterViewProps {
  assetBase?: string;
  src?: string;
  appLoaded?: (state: any) => void;
}

export const FlutterView: React.FC<FlutterViewProps> = memo(({
  assetBase = '',
  src = 'main.dart.js',
  appLoaded,
}) => {
  const ref = useRef<HTMLDivElement>(null)

  useEffect(() => {
    let isRendered = true
    const initFlutterApp = async () => {
      if (!engineInitializerPromise) {
        console.log('create Flutter engine initializer promise...')
        engineInitializerPromise = new Promise<any>((resolve) => {
          console.log('setup Flutter engine initializer...')
          _flutter.loader.loadEntrypoint({
            entrypointUrl: src,
            onEntrypointLoaded: async (engineInitializer: any) => {
              resolve(engineInitializer)
            }
          })
        })
      }
      const engineInitializer = await engineInitializerPromise
      if (!isRendered) return

      console.log('initialize Flutter engine...')
      const appRunner = await engineInitializer?.initializeEngine({
        hostElement: ref.current,
        assetBase: assetBase,
      })
      if (!isRendered) return

      console.log('run Flutter engine...')
      await appRunner?.runApp()
    }
    initFlutterApp()

    const eventListener = (event: Event) => {
      let state = (event as CustomEvent).detail
      appLoaded?.(state)
    }

    ref.current?.addEventListener('flutter-initialized', eventListener, {
      once: true,
    })

    return () => {
      isRendered = false
      ref.current?.removeEventListener('flutter-initialized', eventListener)
    }
  }, [])
  return (
    <div
      ref={ref}
      style={{
        height: '100%',
        width: '100%',
      }}
    >

    </div>
  )
})
