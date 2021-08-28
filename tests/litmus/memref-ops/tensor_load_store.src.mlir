// VERIFY

func @tensor_load_store(%arg : memref<?x?xf32>, %t: tensor<?x?xf32>) -> tensor<?x?xf32>
{
  memref.tensor_store %t, %arg: memref<?x?xf32>
  %v = memref.tensor_load %arg: memref<?x?xf32>
  return %v: tensor<?x?xf32>
}
