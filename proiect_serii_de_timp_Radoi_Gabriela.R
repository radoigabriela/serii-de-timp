valori <- c(4.4877, 4.432, 4.433, 4.4166, 4.4469, 4.4682, 4.4385, 4.423, 4.4232, 4.422, 
            4.4445, 4.504, 4.5303, 4.4818, 4.4657, 4.4727, 4.4994, 4.5218, 4.4858, 
            4.4594, 4.4506, 4.4942, 4.5102, 4.5173, 4.5016, 4.512, 4.5482, 4.5299, 
            4.554, 4.5714, 4.5681, 4.5784, 4.5978, 4.5885, 4.6314, 4.6359, 4.65, 
            4.6555, 4.6605, 4.6565, 4.6387, 4.6611, 4.6502, 4.6437, 4.6466, 4.6651, 
            4.661, 4.653, 4.7037, 4.7478, 4.7538)
ts_date <- ts(valori, start = c(2015, 1), frequency = 12)
plot(ts_date, main = "Evoluția ValoareEur", ylab = "Valoare EUR", xlab = "Ani")
summary(ts_date)
sd(ts_date)
library(tseries)
adf.test(ts_date)
library(forecast)
model_arima <- auto.arima(ts_date)
summary(model_arima)
forecast_model <- forecast(model_arima, h = 12)
plot(forecast_model, main = "Previziuni ValoareEur")
print(forecast_model)
library(tseries)
adf_result <- adf.test(ts_date)
print(adf_result)
ts_diff <- diff(ts_date)
adf_diff_result <- adf.test(ts_diff)
print(adf_diff_result)
acf(ts_date, main = "Funcția de Autocorelare (ACF)")
checkresiduals(model_arima)
