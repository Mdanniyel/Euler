tic
a=0:9;
c=0;
for n1=a(1):a(10)
    for n2=a(1):a(10)
        if n1==n2
            continue
        end
        for n3=a(1):a(10)
            if n1==n3||n3==n2
                continue
            end
            for n4=a(1):a(10)
                if n1==n4||n4==n3||n4==n2
                    continue
                end
                for n5=a(1):a(10)
                    if n1==n5||n2==n5||n3==n5||n4==n5
                        continue
                    end
                    for n6=a(1):a(10)
                        if n1==n6||n2==n6||n3==n6||n4==n6||n5==n6
                            continue
                        end
                        for n7=a(1):a(10)
                            if any(n7==[n1,n2,n3,n4,n5,n6])
                                continue
                            end
                            for n8=a(1):a(10)
                                if any(n8==[n1,n2,n3,n4,n5,n6,n7])
                                    continue
                                end
                                for n9=a(1):a(10)
                                    if any(n9==[n1,n2,n3,n4,n5,n6,n7,n8])
                                        continue
                                    end
                                    for n10=a(1):a(10)
                                        if any(n10==[n1,n2,n3,n4,n5,n6,n7,n8,n9])
                                            continue
                                        end
                                        c=c+1;
                                        if c==1000000
                                            r=[n1,n2,n3,n4,n5,n6,n7,n8,n9,n10]
                                            toc
                                            return
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end                                                                    
        end
    end
end
toc