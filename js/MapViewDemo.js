/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import {StyleSheet, Text, View, NativeModules, Alert} from 'react-native';
import MapView from './MapView';

export default class MapViewDemo extends Component<Props> {

    onRegionChange(event) {
        // Do stuff with event.region.latitude, etc.
        // Alert.alert(event.region.latitude.toString());
    }

  render() {
      var region = {
          latitude: 39.9,
          longitude: 116.4,
          latitudeDelta: 0.1,
          longitudeDelta: 0.1,
      };
    return <MapView region={region} zoomEnabled={false} style={{ flex: 1 }}
                    onRegionChange={this.onRegionChange}/>;
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
    instructions:{
      flex: 1,
  }
});
