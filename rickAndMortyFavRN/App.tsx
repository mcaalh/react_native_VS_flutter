import React from 'react';
import { StoreProvider } from './src/store/Store';
import { NavigationContainer } from '@react-navigation/native';
import {createStackNavigator} from '@react-navigation/stack';

import { MainBottomTabs } from './src/navigators/MainStack';

const Stack = createStackNavigator();

export default function App(): JSX.Element {
  return (
    <StoreProvider>
        <NavigationContainer>
          <Stack.Navigator initialRouteName={'MainBottomTabs'} screenOptions={{headerShown:false}}>
            <Stack.Screen name='MainBottomTabs' component={MainBottomTabs}/>
          </Stack.Navigator>
        </NavigationContainer>
        {/* <Focus/> */}
        {/* <RickAndMorty/> */}
        {/* <AnalyticsScreen/> */}
    </StoreProvider>
  );
}

