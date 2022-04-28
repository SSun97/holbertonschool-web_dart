List<double> convertToF(List<double> temperaturesInC) {
    List<double> temperaturesInF = [];
    // print((temperaturesInC[0] * 1.8 + 32).runtimeType);
    for (var i = 0; i < temperaturesInC.length; i++) {
        temperaturesInF.add(temperaturesInC[i] * 1.8 + 32);
    }
    return temperaturesInF;
}