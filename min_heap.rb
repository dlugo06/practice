class MinHeap
    attr_accessor :storage
    def initialize
        @storage = []
    end

    def peak
        storage[0]
    end
    def size
        storage.length
    end
    def swap(i1, i2)
        storage[i1], storage[i2] = storage[i2], storage[i1]
    end
    def get_parent(child_index)
        # check if odd or even
        if child_index % 2 == 0
            return (child_index - 2) / 2
        else # odd
            return (child_index - 1) / 2
        end
    end
    def get_child(parent_index)
        child1 = 2 * parent_index + 1
        child2 = 2 * parent_index + 2
        if child1 >= size
            child1
        elsif child2 >= size
            child1
        elsif storage[child1] < storage[child2]
            child1
        else
            child2
        end
        # return the most min of the two children
        # the child has to exist
    end
    def insert(value)
        storage << value
        bubble_up(size - 1)
    end
    def bubble_up(child_index)
        parent = get_parent(child_index)
        while child_index > 0 && (storage[child_index] < storage[parent])
            # swap operation
            swap(child_index, parent)
            # reassign
            child_index = parent
            parent = get_parent(child_index)
        end
    end
    def remove_peak
        swap(0, size - 1)
        result = storage.pop
        bubble_down(0)
        result
    end
    def bubble_down(parent_index)
        child_index = get_child(parent_index)
        while child_index < size && storage[parent_index] > storage[child_index]
            swap(child_index, parent_index)
            #reassign
            parent_index = child_index
            child_index = get_child(parent_index)
        end
    end

end


t = MinHeap.new
t.insert(1)
t.insert(7)
t.insert(4)
t.insert(9)
t.insert(6)
t.insert(10)
t.insert(8)
t.insert(2)

p t.storage
p t.remove_peak
p t.storage
