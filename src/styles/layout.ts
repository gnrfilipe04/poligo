import { Dimensions, PixelRatio } from "react-native";

export default {
    widthPercentageToDP: (widthPercent: string, print: boolean = false) => {
        const screenWidth = Dimensions.get('window').width;
        print && console.log(PixelRatio.roundToNearestPixel(screenWidth * parseFloat(widthPercent) / 100))
        return PixelRatio.roundToNearestPixel(screenWidth * parseFloat(widthPercent) / 100);
    },
    heightPercentageToDP: (heightPercent: string, print: boolean = false) => {
        const screenHeight = Dimensions.get('window').height;
        print && console.log(PixelRatio.roundToNearestPixel(screenHeight * parseFloat(heightPercent) / 100))
        return PixelRatio.roundToNearestPixel(screenHeight * parseFloat(heightPercent) / 100);
    }
}
