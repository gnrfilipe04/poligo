
import React from 'react';

import { 
    useFonts,
    Poppins_300Light,
    Poppins_400Regular,
    Poppins_700Bold 
} from "@expo-google-fonts/poppins"

import AppLoading from 'expo-app-loading';
import { NavigationContainer } from '@react-navigation/native';
import { Routes } from './src/routes/routes';


export default function App() {

    const [ fontsLoaded ] = useFonts({
        Poppins_300Light, 
        Poppins_400Regular, 
        Poppins_700Bold 
      })

    if(!fontsLoaded) return <AppLoading />

  return (
    <NavigationContainer>
        <Routes />
    </NavigationContainer>
  );
}


