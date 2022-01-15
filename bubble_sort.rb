#Bubble sort

# One loop will traverse all array
# Compare first number and second number and if first,bigger than second, swap them.

def bubble_sort(arr)
   for i in 0..arr.length - 1 #Sort all array 5 times
       for i in 0..arr.length - 2 # Sort all array 4 times
           if (arr[i] >= arr[i+1])
            arr[i],arr[i+1] = arr[i+1],arr[i]
           end
       end
   end
          arr
end
arr = [4,3,78,2,0,2]
sorted = bubble_sort(arr)
print sorted