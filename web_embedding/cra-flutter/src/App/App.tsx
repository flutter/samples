import React, { useRef } from 'react'
import { styled, useTheme } from '@mui/material/styles'
import AppBar from '@mui/material/AppBar'
import Box from '@mui/material/Box'
import Toolbar from '@mui/material/Toolbar'
import Typography from '@mui/material/Typography'
import Button from '@mui/material/Button'
import IconButton from '@mui/material/IconButton'
import MenuIcon from '@mui/icons-material/Menu'
import FlutterDashIcon from '@mui/icons-material/FlutterDash'
import Drawer from '@mui/material/Drawer'
import CssBaseline from '@mui/material/CssBaseline'
import List from '@mui/material/List'
import FormControl from '@mui/material/FormControl'
import MenuItem from '@mui/material/MenuItem'
import InputLabel from '@mui/material/InputLabel'
import Select, { SelectChangeEvent } from '@mui/material/Select'
import TextField from '@mui/material/TextField'
import { FlutterView } from './FlutterView/FlutterView'

const drawerWidth = 300

const Main = styled('main', { shouldForwardProp: (prop) => prop !== 'open' })<{
  open?: boolean;
}>(({ theme, open }) => ({
  display: 'flex',
  justifyContent: 'center',
  alignItems: 'center',
  flexGrow: 1,
  transition: theme.transitions.create('margin', {
    easing: theme.transitions.easing.sharp,
    duration: theme.transitions.duration.leavingScreen,
  }),
  marginLeft: `-${drawerWidth}px`,
  ...(open && {
    transition: theme.transitions.create('margin', {
      easing: theme.transitions.easing.easeOut,
      duration: theme.transitions.duration.enteringScreen,
    }),
    marginLeft: 0,
  }),
}))

const DrawerHeader = styled('div')(({ theme }) => ({
  display: 'flex',
  alignItems: 'center',
  padding: theme.spacing(0, 1),
  // necessary for content to be below app bar
  ...theme.mixins.toolbar,
  justifyContent: 'flex-end',
}))

const FlutterAppWrapper = styled('div')(({ theme }) => ({
  border: '1px solid #eee',
  borderRadius: '5px',
  height: '480px',
  width: '320px',
  transition: theme.transitions.create('all', {
    easing: theme.transitions.easing.easeInOut,
    duration: theme.transitions.duration.enteringScreen,
  }),
  overflow: 'hidden',
}))

const EffectButton = ({ title, toggleClassName }: { title: string, toggleClassName: (name: string) => void }) => {
  const onClick = () => {
    toggleClassName(`fx-${title.toLowerCase()}`)
  }
  return (
    <Button
      variant="outlined"
      onClick={onClick}
      sx={{ minWidth: '130px' }}
    >
      {title}
    </Button>
  )
}

function App () {
  const theme = useTheme()
  const [drawerOpened, setDrawerOpened] = React.useState(false)
  const [classNames, setClassNames] = React.useState('')
  const [screen, setScreen] = React.useState('counter')
  const [clicks, setClicks] = React.useState(0)
  const [text, setText] = React.useState('')
  const flutterState = useRef<any>(null)
  const handleDrawer = () => {
    setDrawerOpened(!drawerOpened)
  }
  const onFlutterAppLoaded = (state: any) => {
    flutterState.current = state
    state.onClicksChanged(() => { setClicks(flutterState.current?.getClicks()) })
    state.onTextChanged(() => { setText(flutterState.current?.getText()) })
    state.onScreenChanged(() => { setScreen(flutterState.current?.getScreen()) })
  }
  const toggleClassName = (className: string) => {
    const classNamesArray = classNames.trim().split(/\s+/)
    const index = classNamesArray.indexOf(className)
    if (index === -1) {
      classNamesArray.push(className)
    } else {
      classNamesArray.splice(index, 1)
    }
    setClassNames(classNamesArray.join(' '))
  }
  const handleScreenChange = (event: SelectChangeEvent) => {
    flutterState.current?.setScreen(event.target.value as string)
  }
  const handleClicksChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    const clicks = parseInt(event.target.value, 10) || 0
    flutterState.current?.setClicks(clicks)
  }
  const handleTextChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    const text = event.target.value || ''
    flutterState.current?.setText(text)
  }
  return (
    <Box sx={{ display: 'flex', flexGrow: 1 }}>
      <CssBaseline/>
      <AppBar position="fixed" sx={{ zIndex: (theme) => theme.zIndex.drawer + 1 }}>
        <Toolbar>
          <IconButton
            size="large"
            edge="start"
            color="inherit"
            aria-label="menu"
            onClick={handleDrawer}
            sx={{ mr: 2 }}
          >
            <MenuIcon/>
          </IconButton>
          <Typography variant="h6" component="div" sx={{ flexGrow: 1 }}>
            React 🤝 Flutter
          </Typography>
          <FlutterDashIcon/>
        </Toolbar>
      </AppBar>
      <Drawer
        open={drawerOpened}
        variant="persistent"
        anchor="left"
        sx={{
          width: drawerWidth,
          flexShrink: 0,
          [`& .MuiDrawer-paper`]: { width: drawerWidth, boxSizing: 'border-box' },
        }}
      >
        <DrawerHeader/>
        <Box sx={{ overflow: 'auto', padding: theme.spacing(1), }}>
          <List>
            <Box>
              <Typography variant="h5" component="h2">Effects</Typography>
              <Box sx={{ display: 'flex', flexGrow: 1, flexWrap: 'wrap', gap: '5px' }}>
                <EffectButton toggleClassName={toggleClassName} title="Shadow"/>
                <EffectButton toggleClassName={toggleClassName} title="Mirror"/>
                <EffectButton toggleClassName={toggleClassName} title="Resize"/>
                <EffectButton toggleClassName={toggleClassName} title="Spin"/>
              </Box>
            </Box>
            <Box mt={2}>
              <Typography variant="h5" component="h2">JS Interop</Typography>
              <FormControl fullWidth>
                <InputLabel id="screen-select-label">Screen</InputLabel>
                <Select
                  labelId="screen-select-label"
                  value={screen}
                  label="Screen"
                  onChange={handleScreenChange}
                >
                  <MenuItem value="counter">Counter</MenuItem>
                  <MenuItem value="text">TextField</MenuItem>
                  <MenuItem value="dash">Custom App</MenuItem>
                </Select>
                {screen === 'counter' && (
                  <TextField
                    label="Clicks"
                    type="number"
                    value={clicks}
                    onChange={handleClicksChange}
                    InputLabelProps={{
                      shrink: true,
                    }}
                    margin="dense"
                  />
                )}
                {screen !== 'counter' && (
                  <TextField
                    label="Text"
                    type="text"
                    value={text}
                    onChange={handleTextChange}
                    InputLabelProps={{
                      shrink: true,
                    }}
                    margin="dense"
                  />
                )}
              </FormControl>
            </Box>
          </List>
        </Box>
      </Drawer>
      <Main open={drawerOpened}>
        <FlutterAppWrapper className={classNames}>
          <FlutterView
            assetBase={process.env.PUBLIC_URL + '/flutter/'}
            src={process.env.PUBLIC_URL + '/flutter/main.dart.js'}
            appLoaded={onFlutterAppLoaded}
          />
        </FlutterAppWrapper>
      </Main>
    </Box>
  )
}

export default App
