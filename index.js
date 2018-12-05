/** @format */

import {AppRegistry} from 'react-native';
import App from './js/App';
import {name as appName} from './app.json';
import Calendar from './js/Calendar';
import Bridge from "./js/Bridge";
import MapViewDemo from "./js/MapViewDemo";
import DirectlyHandle from "./js/DirectlyHandle";
import AnimatedDemo from './js/AnimatedDemo';
import LocationDemo from "./js/LocationDemo";
import RNTextDemo from "./js/RNTextDemo";
import RNTestManagerDemo from "./js/RNTestManagerDemo";
import RNPageControllerDemo from "./js/RNPageControllerDemo";

AppRegistry.registerComponent(appName, () => App);

AppRegistry.registerComponent("Module1", () => Calendar);

AppRegistry.registerComponent("Module2", () => Bridge);

AppRegistry.registerComponent("Module3", () => MapViewDemo);

AppRegistry.registerComponent("Module4", () => DirectlyHandle);

AppRegistry.registerComponent("Animated", () => AnimatedDemo);

AppRegistry.registerComponent("Location", () => LocationDemo);

AppRegistry.registerComponent("RNText", () => RNTextDemo);

AppRegistry.registerComponent("TestManager", () => RNTestManagerDemo);

AppRegistry.registerComponent("RNPage", () => RNPageControllerDemo);