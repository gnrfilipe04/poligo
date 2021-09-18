import React from "react"
import { TextInput, View } from "react-native";
import { AntDesign } from "@expo/vector-icons"
import {styles} from "./styles"

export function Search(){
    return (
        <View style={styles.container}>
           
            <TextInput 
                placeholder="Pesquisar por nome..."
                style={styles.input}
                
            />
            
        </View>
    )
}

