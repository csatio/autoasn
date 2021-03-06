test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})


library(autoasn)
library(magrittr)

run_train(data_path='data',
          data_file= 'auto.xlsx',
          model_path= 'models/',
          model_name=glue::glue('auto_model_{strftime(start_time, "%Y-%m-%d--%H-%M-%S")}.rds'),
          container_url= 'https://storageaccountcsapp9d08.blob.core.windows.net/',
          key= Sys.getenv('STORAGE_ACCOUNT_KEY'),
          seed = 1992)


get_existing_model(model_path= 'models/')


input_dict = list(
  'cylinders' = 6,
  'displacement' = 320,
  'horsepower' = 150,
  'weight' = 2449,
  'acceleration' = 11.0,
  'year' = 70,
  'origin' = 1,
  'name' = 'teste01'
)

model_path = "models/"
container_url= 'https://storageaccountcsapp9d08.blob.core.windows.net/'
key=Sys.getenv('STORAGE_ACCOUNT_KEY')

model = autoasn::update_model(model_path ,container_url,key)

model = get_existing_model(model_path = "models/")

score = autoasn::get_score(input_dict, model$model)
score


