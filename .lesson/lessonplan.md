# Lesson plan

## Classroom Structure

We will structure our classroom as follows:
- 17.00 - 17.10: Opening
- 17.10 - 18.10: Homework Showcase
- 18.10 - 18.30: Break
- 18.30 - 19.30: Discussion
- 19.30 - 20.00: Closing

## Homework Showcase

In this iteration of Generasi Gigih, we are experimenting with a method called "flipped learning". In this method, we emphasize learning based on the experience of our participants. Therefore, we explicitly tell them that all of our modules and their corresponding homework should be conducted by participants before the classroom session is started.

During our classroom session, the very first thing we do is a homework showcase. As classroom instructors, we should try our best to get as many people as possible to showcase their homework. As a heuristic, for each participant, allocate around 5-6 minutes for one showcase so that we cover 10-12 people in a one hour showcase session.

Things particpants should do during the showcase:
- Run their solution
- Quick walkthrough of the code
- Ask questions, if any

Things class instructors should do during the showcase:
- Ask decisions around the solution
- Answer questions, if any

## Discussion

After homework showcase, we continue with an hour discussion session. In this session, we encourage participants to ask questions based on their own progress with the homework. We only re-read the module materials if we deem necessary. Otherwise, we should proceed with the discussion.

If participants don't appear to be much invovled in the discussion, as instructors, we can ask some questions to ignite a discussion.

The following is some questions that might help to gauge participants' understanding of this module:

1. What is a class in OOP?
2. What is an object in OOP?
3. What constitutes an object in OOP?
4. What is the purpose of creating classes in OOP?

The following is some questions that might help participants to even deeper understand this module: 

### How did you implement `Player#to_s`?

Some participants might be tempted to implement their `Player#to_s` like this:

```ruby
class Player
  def to_s
    result = "#{@name}:\n"
    
    @monsters.each_with_index do |monster, index|
      result += "#{monster.name}[#{monster.hitpoint}]"
      if index < @monsters.size - 1
        result += ', '
      else
        result += "\n"
      end
    end
    
    result
  end
end
```

While such solution works just fine, it breaks encapsulation. In OOP, we prefer to delegate how a `monster` object should print itself to `Monster` class rather than `Player` class knows too much about the states of `monster` object. Calling `result += monster.to_s` instead of `result += "#{monster.name}[#{monster.hitpoint}]"` is not a matter of writing less code, but it's a matter of respecting boundaries between objects.

### Did you find any trouble when adding `cppmander` to both players?

One of the trickier parts in our homework is the fact that one of the monster (`cppmander`) appears in both players' deck. Without a proper way of handling this, Player 1's `cppmander` will die when Player 1 attacks Player 2's `cppmander`. The solution is actually quite simple:

```ruby
class Player
  def add_monster(monster)
    monsters << monster.dup
  end
end
```

While it is a simple solution, it is the reason why this was necessary that's interesting. Let's do something funny to our solution codebase:

```ruby
phpkachu = Monster.new('Phpkachu', 80, 50)
puts phpkachu.object_id

sqlrtle = Monster.new('Sqlrtle', 100, 20)
puts sqlrtle.object_id

cppmander = Monster.new('Cppmander', 40, 80)
puts cppmander.object_id

bashtoise = Monster.new('Bashtoise', 60, 60)
puts bashtoise.object_id

torterraform = Monster.new('Torterraform', 120, 10)
puts torterraform.object_id
```

Now, in our Player class, do the following:

```ruby
class Player
  def add_monster(monster)
    puts "object_id of monster inside of add_monster method:"
    puts monster.object_id # should be identical with monster's object_id from main.rb
    duplicate = monster.dup
    puts "object_id of monster.dup inside of add_monster method:"
    puts duplicate.object_id # should be different with monster's object_id from main.rb
    monsters << duplicate
  end
end
```

This is a good segue to discuss about pass-by-value and pass-by-reference. While Ruby is a strictly pass-by-value language, a variable in Ruby is actually a reference to an object.
