/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import {StyleSheet, Text, View, NativeModules, Alert} from 'react-native';


export default class Bridge extends Component<Props> {

  render() {
    return (
      <View style={styles.container}>
        <Text style={{top:100, left:30}} onPress={()=>{
          var a = NativeModules.BridgeController;
          Alert.alert(a.firstDayOfTheWeek)
        }}>Bridge</Text>
        <Text style={{top:110, left:30}}>hello</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    // justifyContent: 'center',
    // alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
    instructions:{
      flex: 1,
  }
});
