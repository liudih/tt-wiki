```java
    /**
     * 使用java内置的js脚本, 计算运费
     *
     * @param value 要运算的公式, 包含变量
     * @param subs  哈希, key 为要代替公式中变量的正则，value为为要代替公式中变量的实际值
     *
     * @return Double型的运费 或者null, 无法运算
     * */
    private Double _evalPrice(String value, HashMap subs) {
        ScriptEngineManager manager = new ScriptEngineManager();
        ScriptEngine engine = manager.getEngineByName("js");
        try {
            subs.put("ceil", "Math.ceil");
            subs.put("floor", "Math.floor");
            for (Object subKey: subs.keySet()) {
                value = value.replaceAll(subKey.toString(), subs.get(subKey).toString());
            }
            Double cost = new Double(String.valueOf(engine.eval(value)));

            return cost;
        } catch (Exception e) {
            return null;
        }
    }




        HashMap subs = new HashMap();
        subs.put("\\$w", weight.toString());
        if (null == ch) {
            ch = exchangeRateDao.getCurrencyCode(CurrencyCodeCons.HKD.getCurrencyCode());
        }
        subs.put("\\$ch", ch.getExRate());

```