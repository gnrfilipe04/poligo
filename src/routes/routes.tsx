import React from 'react'
import { createStackNavigator } from '@react-navigation/stack';
import { Login } from '../pages/Login';

const Stack = createStackNavigator()  

export function Routes(){
    return (
        //@ts-ignore
        <Stack.Navigator initialRouteName='Home' headerMode='none'>
            <Stack.Screen
                name='Login'
                component={Login}
            />
            
        </Stack.Navigator>
    )
}