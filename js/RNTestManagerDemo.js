import {Component} from "react";
import {StyleSheet, View, Text, NativeModules, Alert, TouchableOpacity, NativeAppEventEmitter} from "react-native";
import React from "react";


export default class RNTestManagerDemo extends Component<Props> {

    componentDidMount(){
        this.subscription = NativeAppEventEmitter.addListener(
            'typeChange',
            (result)  => alert(result.type)
        );
    }

    componentWillUnmount() {
        this.subscription.remove();
    }

    render() {
        this.index = 0;
        return (
            <View style={styles.container}>
                <Text style={styles.text} onPress={()=>{
                    var Test = NativeModules.Test;
                    Test.print("hello world");
                }}>Press me 1</Text>
                <Text style={styles.text} onPress={()=>{
                    var Test = NativeModules.Test;
                    Test.add(1, 2, (result)=>{
                          Alert.alert('1 + 2 = ' + result + Test.defaultValue);
                    });
                }}>Adder</Text>
                <Text style={styles.text} onPress={()=>{
                    var Test = NativeModules.Test;
                    Test.updateTestManagerType(Test.testManagerTypeDefault, (type, info) =>{
                        Alert.alert("update result\n" + type + " " + info);
                    })
                }}>Update</Text>
                <TouchableOpacity onPress={() => {
                    var Test = NativeModules.Test;
                    var type;
                    switch (this.index) {
                        case 0:
                            type = Test.testManagerTypeNone;
                            break;
                        case 1:
                            type = Test.testManagerTypeDefault;
                            break;
                        case 2:
                            type = Test.testManagerTypeCustome;
                        break;
                        default:
                    }
                    this.index = (this.index + 1) % 3;
                    Test.updateTestManagerType(type, (type, info)=>{

                    });
                    }}
                    style={{width:100, height:20, backgroundColor: 'gray', marginLeft: 15, marginTop: 15}}
                >
                    <Text>更改TYPE</Text>
                </TouchableOpacity>
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
        height:15,
    }
});