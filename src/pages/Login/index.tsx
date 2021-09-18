import React from "react"
import { StyleSheet, Text, View, Image, SafeAreaView, PixelRatio } from "react-native"
import  woman  from "../../assets/mulher-login.png"
import { ButtonIcon } from "../../components/Button"
import facebook from "../../assets/facebook.png"
import google from "../../assets/google.png"
import colors from "../../styles/colors"
import { useNavigation } from "@react-navigation/core";
import layout from "../../styles/layout";

export function Login (){

    const navigation = useNavigation()

    return (
        <SafeAreaView style={styles.container}>
            <View style={[styles.containerHeader, {height: layout.heightPercentageToDP('45%')}]}>
                <Image 
                source={woman} 
                style={{
                    width: layout.widthPercentageToDP('70%'), 
                    height: layout.heightPercentageToDP('50%'),
                }}
                    
                />
            </View>
            <Text style={[styles.text, {
                fontSize: layout.widthPercentageToDP('7%')
            }]}>
                Acompanhe quem{"\n"}
                decide <Text style={styles.textBold}>o seu futuro</Text>
            </Text>

            <View style={styles.buttonContainer}>
                <ButtonIcon 
                background={colors.blue}
                color={colors.white}
                icon={facebook}
                title="Entrar com facebook"
                divisor={colors.white}
                onPress={() => navigation.navigate("Home")}
                />
                <ButtonIcon 
                background={colors.white}
                color={colors.gray}
                icon={google}
                title="Entrar com google"
                divisor='#b8b7b9'
                border='#b8b7b9'
                />
            </View>
        </SafeAreaView>
    )
}

const styles = StyleSheet.create({
    
    container: {
        flex: 1,
        alignContent: "center",
        justifyContent: "space-between",
        backgroundColor: colors.white
    },
    containerHeader: {
        backgroundColor: colors.yellow,
        alignItems: "center",
        paddingTop: 20,
        marginBottom: 70
    },
    text: {
        textAlign: "center",
        fontFamily: "Poppins_400Regular",
        color: colors.gray,
        alignItems: "center",
    },
    textBold: {
        fontWeight: "bold"
    },
    buttonContainer: {
        paddingHorizontal: 50,
        height: 170,
        paddingVertical: 20,
        justifyContent: "space-between"
    }

})
