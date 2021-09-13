import React from "react";
import { View, StyleSheet, Text } from "react-native";
import colors from "../styles/colors";
import fonts from "../styles/fonts";
import layout from "../styles/layout";

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

                <Text>Foto</Text>
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
    }
})