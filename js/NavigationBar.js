import React, {Component} from 'react';
import {
    View,
    Text,
    Image,
    StatusBar,
    Platform,
    StyleSheet,
    ViewPropTypes,
} from 'react-native';
import PropTypes from 'prop-types';

const NAVBAR_HEIGHT_ANDROID=50;
const NAVBAR_HEIGHT_IOS=44;
const STATUS_BAR_HEIGHT=20;
const StatusBarShape={
    backgroundColor:PropTypes.string,
    barStyle:PropTypes.oneOf(['default', 'light-content', 'dark-content']),
    hidden:PropTypes.bool
}

export default class NavigationBar extends Component {
    static propTypes={
        style:ViewPropTypes.style,
        title:PropTypes.string,
        titleView:PropTypes.element,
        hide:PropTypes.bool,
        leftButton:PropTypes.element,
        rightButton:PropTypes.element,
        statusBar: PropTypes.shape(StatusBarShape)
    }
    static defaultProps={
        statusBar:{
            barStyle: 'light-content',
            hide:false
        }
    }
    constructor(props){
        super(props);
        this.state={
            title:'',
            hide:false,
        }
    }
    render(){
        let status=<View style={[styles.statusBar, this.props.statusBar]}>
            <StatusBar {...this.props.statusBar}/>
        </View>
        let titleView=this.props.titleView?this.props.titleView:
            <Text style={styles.title}>{this.props.title}</Text>
        let content=<View style={styles.navBar}>
            {this.props.leftButton}
            <View style={styles.titleViewContainer}>
                {titleView}
            </View>
            {this.props.rightButton}
        </View>
        return (
            <View style={[styles.container, this.props.style]}>
                {status}
                {content}
            </View>
        )
    }
}
const styles=StyleSheet.create({
    container:{
        backgroundColor:'#2196F3',
        // width:320,
        // height:44,
    },
    navBar:{
        justifyContent:'space-between',
        alignItems: 'center',
        height:Platform.OS === 'ios'? NAVBAR_HEIGHT_IOS:NAVBAR_HEIGHT_ANDROID,
        flexDirection: 'row',
    },
    titleViewContainer:{
        justifyContent: 'center',
        alignItems: 'center',
        position: "absolute",
        left:40,
        right:40,
        top:0,
        bottom:0
    },
    title:{
        fontSize:20,
        color:'white'
    },
    statusBar:{
        height: Platform.OS === 'ios'?STATUS_BAR_HEIGHT:0,
    }
})