import { Component, AfterViewInit, SimpleChanges, ViewChild, ElementRef, Input, EventEmitter, Output } from '@angular/core';
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';

// The global _flutter namespace
declare var _flutter: any;
declare var window: {
  _debug: any
};

@Component({
  selector: 'ng-flutter',
  standalone: true,
  template: `
  <div #flutterTarget>
    <div class="spinner">
      <mat-spinner></mat-spinner>
    </div>
  </div>
  `,
  styles: [`
    :host div {
      width: 100%;
      height: 100%;
    }
    .spinner {
      display: flex;
      justify-content: center;
      align-items: center;    
    }`,
  ],
  imports: [
    MatProgressSpinnerModule,
  ],
})
export class NgFlutterComponent implements AfterViewInit {
  // The target that will host the Flutter app.
  @ViewChild('flutterTarget') flutterTarget!: ElementRef;

  @Input() src: String = 'main.dart.js';
  @Input() assetBase: String = '';
  @Output() appLoaded: EventEmitter<Object> = new EventEmitter<Object>();

  ngAfterViewInit(): void {
    const target: HTMLElement = this.flutterTarget.nativeElement;

    _flutter.loader.loadEntrypoint({
      entrypointUrl: this.src,
      onEntrypointLoaded: async (engineInitializer: any) => {
        let appRunner = await engineInitializer.initializeEngine({
          hostElement: target,
          assetBase: this.assetBase,
        });
        await appRunner.runApp();
      }
    });

    target.addEventListener("flutter-initialized", (event: Event) => {
      let state = (event as CustomEvent).detail;
      window._debug = state;
      this.appLoaded.emit(state);
    }, {
      once: true,
    });
  }
}
