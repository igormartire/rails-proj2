class Foobar
  def self.baz(a)
  	a.uniq!
  	a.map! { |e| (e.to_i) +2 }
  	a.select! { |e| e%2 == 0 && e<10}
  	a.inject { |mem, var| mem+var }
  end
end
