/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import {StyleSheet, Text, View, NativeModules, Alert} from 'react-native';


const CalendarManager = NativeModules.CalendarManager;

export default class Calendar extends Component<Props> {

  render() {
    return (
      <View style={styles.container}>
          {/*<Text style={{flex:1}} onPress={()=>{*/}
              {/*var date = new Date();*/}
              {/*CalendarManager.addEvent(*/}
                  {/*"Birthday Party", {*/}
                      {/*location: "4 Privet Drive, Surrey",*/}
                      {/*time: date.getTime(),*/}
                      {/*description: "I'm a boy",*/}
                      {/*// date.toISOString()*/}
                  {/*}*/}
              {/*);*/}
          {/*}}>addEvent(字典映射)</Text>*/}
          <Text style={styles.instructions} onPress={()=>{
              CalendarManager.findEvents((error, events) => {
                  if (error) {
                      Alert.alert(error);
                  }
                  else {
                      var a = events[0];
                      Alert.alert(a);
                  }
              })
          }}>findEvents(callback)</Text>

          <Text style={styles.instructions} onPress={()=>{
              async function updateEvents() {
                  try {
                      var events = await CalendarManager.findEvents();

                      var content = events[0];
                      Alert.alert(content);
                  } catch (e) {
                      console.error(e);
                  }
              }
              updateEvents();
          }}>findEvents(promise)</Text>
      </View>
    );
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
