#program_export
bar :: () #c_call {
    printf("bar from Jai\n");
    baz();
}

#import "POSIX";
#import "test";