/**
 * @format
 */

import {AppRegistry} from 'react-native';
import App from './App';
import {name as appName} from './app.json'
import Screen from './components/screen.js'

AppRegistry.registerComponent(appName, () => Screen);