# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-experimentos/Experimento5/s611_CA_reparar_dataset.r")
source("~/dm2023b/src/workflow-experimentos/Experimento5/s621_DR_corregir_drifting.r")
source("~/dm2023b/src/workflow-experimentos/Experimento5/s631_FE_historia.r")
source("~/dm2023b/src/workflow-experimentos/Experimento5/s641_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-experimentos/Experimento5/s651_HT_lightgbm.r")
source("~/dm2023b/src/workflow-experimentos/Experimento5/s661_ZZ_final.r")
