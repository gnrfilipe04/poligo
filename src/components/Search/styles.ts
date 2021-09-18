import { Poppins_100Thin, Poppins_400Regular } from "@expo-google-fonts/poppins";
import { StyleSheet } from "react-native";
import colors from "../../styles/colors";
import layout from "../../styles/layout";

export const styles = StyleSheet.create({
    container : {
        alignItems: "center",
        justifyContent: "space-between"
    },
    input: {
        width: layout.widthPercentageToDP("60%"),
        height: 40,
        backgroundColor: colors.white,
        borderRadius: 4,
        borderColor: colors.yellow,
        borderWidth: 1,
        position: "absolute",
        top: -20,
        padding: 10
    }
})