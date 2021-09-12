import React from 'react'

import { createStackNavigator } from '@react-navigation/stack'

import { Login } from '../pages/Login'
import colors from '../styles/colors'

const stackRoutes = createStackNavigator()

const AppRoutes: React.FC = () => (
    
    <stackRoutes.Navigator
        //@ts-ignore
        headerMode="none"
        screenOptions={{
            cardStyle: {
                backgroundColor: colors.white
            }
        }}
    >
        <stackRoutes.Screen 
            name="Login"
            component={Login}
        />

    </stackRoutes.Navigator>
)

export default AppRoutes;