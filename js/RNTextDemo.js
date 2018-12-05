import {Component} from "react";
import {StyleSheet, View, Alert} from "react-native";
import React from "react";
import RNText from './RNText/RNText';


export default class RNTextDemo extends Component<Props> {
    render() {
        return (
            <View style={styles.container}>
                <RNText value="HaHaHa~~~" style={styles.text}
                onValueChange={(value)=>{
                // Alert.alert(value)
                }}
                />
            </View>
        )
    }
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: '#F5FCFF',
    },
    text: {
        marginLeft: 15,
        marginTop: 20,
        width:100,
        height:30,
    }
});