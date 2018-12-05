/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import {StyleSheet, Text, View, TouchableOpacity, TextInput} from 'react-native';


// class MyButton extends React.Component {
//     render() {
//         return (
//             <View>
//                 <Text>{this.props.label}</Text>
//             </View>
//         )
//     }
// }

class MyButton extends React.Component {
    setNativeProps = (nativeProps) => {
        this._root.setNativeProps(nativeProps);
    }

    render() {
        return (
            <TouchableOpacity>
                <View ref={component => this._root = component} {...this.props}>
                    <Text>{this.props.label}</Text>
                </View>
            </TouchableOpacity>
        )
    }
}

class MyTextInput extends Component {

    clearText = () => {
        this._textInput.setNativeProps({text: ''});
    }


    render() {
        return (
            <View style={{backgroundColor:'red', flexDirection: 'row'}}>
                <TextInput
                    ref={component => this._textInput = component}
                    style={{height:50, flex: 1,marginHorizontal: 20, borderWidth: 1, borderColor:'#ccc'}}
                />
                <TouchableOpacity onPress={this.clearText}>
                    <Text>Clear text</Text>
                </TouchableOpacity>
            </View>
        );
    }
}

export default class DirectlyHandle extends Component<Props> {

    render() {
        return (
            <View style={{backgroundColor:'gray', flex: 1}}>
                <MyButton label="Press me!"/>
                <MyTextInput />
            </View>
        )
    }


    // constructor(props) {
    //     super(props);
    //     this.state = { myButtonOpacity: 1, };
    // }
    //
    // render(){
    //     return (
    //         <TouchableOpacity onPressIn={() => this.setState({myButtonOpacity: 0.5})}
    //                           onPressOut={() => this.setState({myButtonOpacity: 1})}>
    //             <MyButton label="Press me!" />
    //         </TouchableOpacity>
    //     )
    // }

}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  button:{
      top: 100,
      backgroundColor: 'green',
  }
});
