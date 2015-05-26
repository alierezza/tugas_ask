module ApplicationHelper

  def regression(regressions)
    tahun = regressions.map{|c1|  "#{c1.tahun.to_i}"}
    km = regressions.map{|c1| "#{c1.km.to_i}"}
    harga = regressions.map{|c1| "#{c1.harga.to_i}"}
    r =  RinRuby.new

    # r.eval <<-EOF
    r.eval "harga <- c(#{harga.join(",")})"
    r.eval "tahun <- c(#{tahun.join(",")})"
    r.eval "km <- c(#{km.join(",")})"
    
    r.eval "reg_data <- data.frame(harga, tahun, km)"
    r.eval "reg_car <- lm(harga~km+tahun, data=reg_data)"
    r.eval "out <-capture.output(summary(reg_car))"
    r.eval "cat(out,file='~/output.txt',sep='\n',append=TRUE)"
    r.eval "cat(out,file='D:output.txt',sep='\n',append=TRUE)"

    r.quit
  end
end
# r.pull "summary(reg_car)$coefficients[1]"
# r.eval "str(reg_car)"
# write(reg_car, file = 'data', ncolumns = if(is.character(x)) 1 else 5, append = FALSE, sep = ' ')