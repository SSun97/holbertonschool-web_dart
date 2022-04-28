List<double> convertToF(List<double> temperaturesInC) {
    List<double> temperaturesInF = [];
    for (var i = 0; i < temperaturesInC.length; i++) {
        temperaturesInF.add( (temperaturesInC[i] * 1.8) + 32 );
    }
    return temperaturesInF;
}