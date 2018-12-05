
import React, { Component } from 'react';
import { requireNativeComponent } from 'react-native';
import PropTypes from 'prop-types';

var UIText = requireNativeComponent('RNText', RNText);

export default class RNText extends Component {
    static propTypes = {
        value: PropTypes.string,
        onValueChange: PropTypes.func,
    };

    static defaultProps = {
    }

    render() {
        return <UIText {...this.props} onChange={(obj)=>{
            this.props.onValueChange(obj.nativeEvent.value);
        }}/>;
    }
}