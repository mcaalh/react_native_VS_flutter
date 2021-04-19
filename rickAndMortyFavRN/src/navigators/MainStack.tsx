import React from 'react'
import {createStackNavigator} from '@react-navigation/stack'
import {createBottomTabNavigator} from '@react-navigation/bottom-tabs';
import HomeScreen from '../screens/mainScreens/HomeScreen';
import { AnalyticsScreen } from '../screens/mainScreens/AnalyticsScreen';
import NotesScreen from '../screens/mainScreens/NotesScreen';
import TabBar from '../components/TabBar';

const BottomTab = createBottomTabNavigator();

export const MainBottomTabs = () => {
    return (
        <BottomTab.Navigator initialRouteName={'Home'} tabBar={props => <TabBar {...props}/>}>
            <BottomTab.Screen name='Home' component={HomeScreen}/>
            <BottomTab.Screen name='Analytics' component={AnalyticsScreen}/>
            <BottomTab.Screen name='Notes' component={NotesScreen}/>
        </BottomTab.Navigator>
    )
}