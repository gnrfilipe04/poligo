import React from "react";
import { View, StyleSheet, Text, Image } from "react-native";
import Avatar from "../../assets/perfil.jpg"
import colors from "../../styles/colors";
import fonts from "../../styles/fonts";
import layout from "../../styles/layout";
import { Search } from "../Search";

export function Header(){
    return (
        <View style={[styles.container, {height: layout.heightPercentageToDP('25%')}]}>
            <View style={[styles.contentContainer, {
                paddingHorizontal: layout.widthPercentageToDP("4%"),
                paddingVertical: layout.heightPercentageToDP("7%"),  
            }]}>
                <Text style={[styles.title, {
                    fontSize: layout.widthPercentageToDP("5%")
                }]}>
                    Olá, <Text style={{fontWeight: "bold"}}>Thiago</Text> {"\n"}
                    <Text style={{
                        fontSize: layout.widthPercentageToDP("3%")
                    }}>Faça sua parte e fiscalize</Text>
                </Text>

                <Image source={Avatar} style={styles.avatar}/>
            </View>
        </View>
    )
}

const styles = StyleSheet.create({
    container: {
        backgroundColor: colors.yellow
    },
    contentContainer: {
        flexDirection: "row",
        alignItems: "center",
        justifyContent: "space-between"
    
    },
    title: {
        color: colors.white,
        fontFamily: fonts.light
    },
    subTitle: {
        color: colors.white
    },
    avatar : {
        width: 70,
        height: 70,
        borderRadius: 10
    }
})