import {Component} from "react";
import {StyleSheet, View, TouchableOpacity, Image, NativeModules, findNodeHandle, Text} from "react-native";
import React from "react";
import NavigationBar from './NavigationBar';

export default class RNPageControllerDemo extends Component<Props> {

    onBack() {
        var VCManager = NativeModules.VCManager;
        VCManager.popViewControllerXYZ(findNodeHandle(this));
    }

    render() {
        return (
            <View style={styles.container}>
                <NavigationBar
                    // title={this.state.title}
                    title={'RN Page'}
                    style={{
                        backgroundColor:'gray'
                    }}
                    leftButton={<TouchableOpacity
                        style={{padding: 8}}
                        onPress={()=>this.onBack()}
                    >
                        <Image style={{width:26,height:26,tintColor: 'white'}}
                               source={require('./ic_arrow_back_white_36pt.png')}/>
                    </TouchableOpacity>}
                />

                <Text style={styles.text}>I'm a RNView</Text>
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
        flex: 1,
        backgroundColor:'green',
        margin: 50,
    }
});