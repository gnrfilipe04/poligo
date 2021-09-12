import React from "react"
import { StyleSheet, Text, View, Image, SafeAreaView, PixelRatio } from "react-native"
import  woman  from "../assets/mulher-login.png"
import { ButtonIcon } from "../components/Button"
import { Dimensions } from 'react-native';
import facebook from "../assets/facebook.png"
import google from "../assets/google.png"
import colors from "../styles/colors"

export function Login (){

    const width = Dimensions.get('window').width;
    const height = Dimensions.get('window').height;

    const widthPercentageToDP = (widthPercent: string) => {
        const screenWidth = Dimensions.get('window').width;
        return PixelRatio.roundToNearestPixel(screenWidth * parseFloat(widthPercent) / 100);
      };

    const heightPercentageToDP = (heightPercent: string) => {
        const screenHeight = Dimensions.get('window').height;
        return PixelRatio.roundToNearestPixel(screenHeight * parseFloat(heightPercent) / 100);
    };

    return (
        <SafeAreaView style={styles.container}>
            <View style={[styles.containerHeader, {height: heightPercentageToDP('45%')}]}>
                <Image 
                source={woman} 
                style={{
                    width: widthPercentageToDP('70%'), 
                    height: heightPercentageToDP('50%'),
                }}
                    
                />
            </View>
            <Text style={[styles.text, {
                fontSize: widthPercentageToDP('7%')
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
                border={colors.white}
                />
                <ButtonIcon 
                background={colors.white}
                color={colors.gray}
                icon={google}
                title="Entrar com google"
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
