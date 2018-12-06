import {Component} from "react";
import {StyleSheet, Text, View} from "react-native";
import React from "react";

var Geolocation = require('Geolocation');

export default class LocationDemo extends Component<Props> {

    render() {
        return (
            <View style={styles.container}>
                <Text style={styles.button} onPress={()=>{
                    Geolocation.getCurrentPosition(
                        location => {
                            var result = "速度：" + location.coords.speed +
                                "\n经度：" + location.coords.longitude +
                                "\n纬度：" + location.coords.latitude +
                                "\n准确度：" + location.coords.accuracy +
                                "\n行进方向：" + location.coords.heading +
                                "\n海拔：" + location.coords.altitude +
                                "\n海拔准确度：" + location.coords.altitudeAccuracy +
                                "\n时间戳：" + location.timestamp;
                            alert(result);
                        },
                        error => {
                            alert("获取位置失败："+ error)
                        }
                    );
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