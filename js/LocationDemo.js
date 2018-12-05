import {Component} from "react";
import {StyleSheet, Text, View, NativeModules} from "react-native";
import React from "react";

const LocationManager = NativeModules.LocationManager;

export default class LocationDemo extends Component<Props> {

    render() {
        return (
            <View style={styles.container}>
                <Text style={styles.button} onPress={()=>{
                    LocationManager.getLocation();
                }}>Get Location!</Text>
            </View>
        )
    }
}


const styles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: '#F5FCFF',
    },
    button:{
        marginLeft: 15,
        marginTop: 20,
        width: 90,
        backgroundColor: 'gray',
    }
});