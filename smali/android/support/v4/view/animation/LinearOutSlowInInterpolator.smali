.class public Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;
.super Landroid/support/v4/view/animation/LookupTableInterpolator;
.source "LinearOutSlowInInterpolator.java"


# static fields
.field private static final VALUES:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f7ff972    # 0.9999f

    .line 34
    const/16 v0, 0xc9

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x3cb5dcc6    # 0.0222f

    const/4 v2, 0x1

    aput v1, v0, v2

    const v1, 0x3d2dab9f    # 0.0424f

    const/4 v2, 0x2

    aput v1, v0, v2

    const v1, 0x3d7b15b5    # 0.0613f

    const/4 v2, 0x3

    aput v1, v0, v2

    const v1, 0x3da2680a    # 0.0793f

    const/4 v2, 0x4

    aput v1, v0, v2

    const v1, 0x3dc5d639    # 0.0966f

    const/4 v2, 0x5

    aput v1, v0, v2

    const v1, 0x3de7d567    # 0.1132f

    const/4 v2, 0x6

    aput v1, v0, v2

    const v1, 0x3e046738    # 0.1293f

    const/4 v2, 0x7

    aput v1, v0, v2

    const v1, 0x3e1460aa    # 0.1449f

    const/16 v2, 0x8

    aput v1, v0, v2

    const v1, 0x3e23d70a    # 0.16f

    const/16 v2, 0x9

    aput v1, v0, v2

    const v1, 0x3e32e48f    # 0.1747f

    const/16 v2, 0xa

    aput v1, v0, v2

    const v1, 0x3e418937    # 0.189f

    const/16 v2, 0xb

    aput v1, v0, v2

    const v1, 0x3e4fc505    # 0.2029f

    const/16 v2, 0xc

    aput v1, v0, v2

    const v1, 0x3e5db22d    # 0.2165f

    const/16 v2, 0xd

    aput v1, v0, v2

    const v1, 0x3e6b50b1    # 0.2298f

    const/16 v2, 0xe

    aput v1, v0, v2

    const v1, 0x3e78a090    # 0.2428f

    const/16 v2, 0xf

    aput v1, v0, v2

    const v1, 0x3e82d0e5    # 0.2555f

    const/16 v2, 0x10

    aput v1, v0, v2

    const v1, 0x3e89374c    # 0.268f

    const/16 v2, 0x11

    aput v1, v0, v2

    const v1, 0x3e8f7660    # 0.2802f

    const/16 v2, 0x12

    aput v1, v0, v2

    const v1, 0x3e958e22    # 0.2921f

    const/16 v2, 0x13

    aput v1, v0, v2

    const v1, 0x3e9b8bac    # 0.3038f

    const/16 v2, 0x14

    aput v1, v0, v2

    const v1, 0x3ea16f00    # 0.3153f

    const/16 v2, 0x15

    aput v1, v0, v2

    const v1, 0x3ea7381d    # 0.3266f

    const/16 v2, 0x16

    aput v1, v0, v2

    const v1, 0x3eace704    # 0.3377f

    const/16 v2, 0x17

    aput v1, v0, v2

    const v1, 0x3eb27bb3    # 0.3486f

    const/16 v2, 0x18

    aput v1, v0, v2

    const v1, 0x3eb7e910    # 0.3592f

    const/16 v2, 0x19

    aput v1, v0, v2

    const v1, 0x3ebd4952    # 0.3697f

    const/16 v2, 0x1a

    aput v1, v0, v2

    const v1, 0x3ec29c78    # 0.3801f

    const/16 v2, 0x1b

    aput v1, v0, v2

    const v1, 0x3ec7c84b    # 0.3902f

    const/16 v2, 0x1c

    aput v1, v0, v2

    const v1, 0x3ecce704    # 0.4002f

    const/16 v2, 0x1d

    aput v1, v0, v2

    const v1, 0x3ed1eb85    # 0.41f

    const/16 v2, 0x1e

    aput v1, v0, v2

    const v1, 0x3ed6d5d0    # 0.4196f

    const/16 v2, 0x1f

    aput v1, v0, v2

    const v1, 0x3edbb2ff    # 0.4291f

    const/16 v2, 0x20

    aput v1, v0, v2

    const v1, 0x3ee08312    # 0.4385f

    const/16 v2, 0x21

    aput v1, v0, v2

    const v1, 0x3ee538ef    # 0.4477f

    const/16 v2, 0x22

    aput v1, v0, v2

    const v1, 0x3ee9d495    # 0.4567f

    const/16 v2, 0x23

    aput v1, v0, v2

    const v1, 0x3eee6320    # 0.4656f

    const/16 v2, 0x24

    aput v1, v0, v2

    const v1, 0x3ef2e48f    # 0.4744f

    const/16 v2, 0x25

    aput v1, v0, v2

    const v1, 0x3ef758e2    # 0.4831f

    const/16 v2, 0x26

    aput v1, v0, v2

    const v1, 0x3efbb2ff    # 0.4916f

    const/16 v2, 0x27

    aput v1, v0, v2

    const/high16 v1, 0x3f000000    # 0.5f

    const/16 v2, 0x28

    aput v1, v0, v2

    const v1, 0x3f021ff3    # 0.5083f

    const/16 v2, 0x29

    aput v1, v0, v2

    const v1, 0x3f0432ca    # 0.5164f

    const/16 v2, 0x2a

    aput v1, v0, v2

    const v1, 0x3f0645a2    # 0.5245f

    const/16 v2, 0x2b

    aput v1, v0, v2

    const v1, 0x3f084b5e    # 0.5324f

    const/16 v2, 0x2c

    aput v1, v0, v2

    const v1, 0x3f0a4a8c    # 0.5402f

    const/16 v2, 0x2d

    aput v1, v0, v2

    const v1, 0x3f0c432d    # 0.5479f

    const/16 v2, 0x2e

    aput v1, v0, v2

    const v1, 0x3f0e353f    # 0.5555f

    const/16 v2, 0x2f

    aput v1, v0, v2

    const v1, 0x3f101a37    # 0.5629f

    const/16 v2, 0x30

    aput v1, v0, v2

    const v1, 0x3f11ff2e    # 0.5703f

    const/16 v2, 0x31

    aput v1, v0, v2

    const v1, 0x3f13dd98    # 0.5776f

    const/16 v2, 0x32

    aput v1, v0, v2

    const v1, 0x3f15aee6    # 0.5847f

    const/16 v2, 0x33

    aput v1, v0, v2

    const v1, 0x3f178034    # 0.5918f

    const/16 v2, 0x34

    aput v1, v0, v2

    const v1, 0x3f194af5    # 0.5988f

    const/16 v2, 0x35

    aput v1, v0, v2

    const v1, 0x3f1b0f28    # 0.6057f

    const/16 v2, 0x36

    aput v1, v0, v2

    const v1, 0x3f1cc63f    # 0.6124f

    const/16 v2, 0x37

    aput v1, v0, v2

    const v1, 0x3f1e7d56    # 0.6191f

    const/16 v2, 0x38

    aput v1, v0, v2

    const v1, 0x3f202de0    # 0.6257f

    const/16 v2, 0x39

    aput v1, v0, v2

    const v1, 0x3f21d7dc    # 0.6322f

    const/16 v2, 0x3a

    aput v1, v0, v2

    const v1, 0x3f2381d8    # 0.6387f

    const/16 v2, 0x3b

    aput v1, v0, v2

    const v1, 0x3f251eb8    # 0.645f

    const/16 v2, 0x3c

    aput v1, v0, v2

    const v1, 0x3f26b50b    # 0.6512f

    const/16 v2, 0x3d

    aput v1, v0, v2

    const v1, 0x3f284b5e    # 0.6574f

    const/16 v2, 0x3e

    aput v1, v0, v2

    const v1, 0x3f29db23    # 0.6635f

    const/16 v2, 0x3f

    aput v1, v0, v2

    const v1, 0x3f2b645a    # 0.6695f

    const/16 v2, 0x40

    aput v1, v0, v2

    const v1, 0x3f2ce704    # 0.6754f

    const/16 v2, 0x41

    aput v1, v0, v2

    const v1, 0x3f2e6320    # 0.6812f

    const/16 v2, 0x42

    aput v1, v0, v2

    const v1, 0x3f2fdf3b    # 0.687f

    const/16 v2, 0x43

    aput v1, v0, v2

    const v1, 0x3f3154ca    # 0.6927f

    const/16 v2, 0x44

    aput v1, v0, v2

    const v1, 0x3f32c3ca    # 0.6983f

    const/16 v2, 0x45

    aput v1, v0, v2

    const v1, 0x3f342c3d    # 0.7038f

    const/16 v2, 0x46

    aput v1, v0, v2

    const v1, 0x3f3594af    # 0.7093f

    const/16 v2, 0x47

    aput v1, v0, v2

    const v1, 0x3f36f694    # 0.7147f

    const/16 v2, 0x48

    aput v1, v0, v2

    const v1, 0x3f3851ec    # 0.72f

    const/16 v2, 0x49

    aput v1, v0, v2

    const v1, 0x3f39a6b5    # 0.7252f

    const/16 v2, 0x4a

    aput v1, v0, v2

    const v1, 0x3f3afb7f    # 0.7304f

    const/16 v2, 0x4b

    aput v1, v0, v2

    const v1, 0x3f3c49ba    # 0.7355f

    const/16 v2, 0x4c

    aput v1, v0, v2

    const v1, 0x3f3d97f6    # 0.7406f

    const/16 v2, 0x4d

    aput v1, v0, v2

    const v1, 0x3f3ed917    # 0.7455f

    const/16 v2, 0x4e

    aput v1, v0, v2

    const v1, 0x3f401a37    # 0.7504f

    const/16 v2, 0x4f

    aput v1, v0, v2

    const v1, 0x3f415b57    # 0.7553f

    const/16 v2, 0x50

    aput v1, v0, v2

    const v1, 0x3f428f5c    # 0.76f

    const/16 v2, 0x51

    aput v1, v0, v2

    const v1, 0x3f43c361    # 0.7647f

    const/16 v2, 0x52

    aput v1, v0, v2

    const v1, 0x3f44f766    # 0.7694f

    const/16 v2, 0x53

    aput v1, v0, v2

    const v1, 0x3f4624dd    # 0.774f

    const/16 v2, 0x54

    aput v1, v0, v2

    const v1, 0x3f474bc7    # 0.7785f

    const/16 v2, 0x55

    aput v1, v0, v2

    const v1, 0x3f486c22    # 0.7829f

    const/16 v2, 0x56

    aput v1, v0, v2

    const v1, 0x3f498c7e    # 0.7873f

    const/16 v2, 0x57

    aput v1, v0, v2

    const v1, 0x3f4aacda    # 0.7917f

    const/16 v2, 0x58

    aput v1, v0, v2

    const v1, 0x3f4bc01a    # 0.7959f

    const/16 v2, 0x59

    aput v1, v0, v2

    const v1, 0x3f4cd9e8    # 0.8002f

    const/16 v2, 0x5a

    aput v1, v0, v2

    const v1, 0x3f4de69b    # 0.8043f

    const/16 v2, 0x5b

    aput v1, v0, v2

    const v1, 0x3f4ef34d    # 0.8084f

    const/16 v2, 0x5c

    aput v1, v0, v2

    const/high16 v1, 0x3f500000    # 0.8125f

    const/16 v2, 0x5d

    aput v1, v0, v2

    const v1, 0x3f510625    # 0.8165f

    const/16 v2, 0x5e

    aput v1, v0, v2

    const v1, 0x3f5205bc    # 0.8204f

    const/16 v2, 0x5f

    aput v1, v0, v2

    const v1, 0x3f530553    # 0.8243f

    const/16 v2, 0x60

    aput v1, v0, v2

    const v1, 0x3f53fe5d    # 0.8281f

    const/16 v2, 0x61

    aput v1, v0, v2

    const v1, 0x3f54f766    # 0.8319f

    const/16 v2, 0x62

    aput v1, v0, v2

    const v1, 0x3f55e9e2    # 0.8356f

    const/16 v2, 0x63

    aput v1, v0, v2

    const v1, 0x3f56d5d0    # 0.8392f

    const/16 v2, 0x64

    aput v1, v0, v2

    const v1, 0x3f57c84b    # 0.8429f

    const/16 v2, 0x65

    aput v1, v0, v2

    const v1, 0x3f58adac    # 0.8464f

    const/16 v2, 0x66

    aput v1, v0, v2

    const v1, 0x3f59930c    # 0.8499f

    const/16 v2, 0x67

    aput v1, v0, v2

    const v1, 0x3f5a786c    # 0.8534f

    const/16 v2, 0x68

    aput v1, v0, v2

    const v1, 0x3f5b573f    # 0.8568f

    const/16 v2, 0x69

    aput v1, v0, v2

    const v1, 0x3f5c2f83    # 0.8601f

    const/16 v2, 0x6a

    aput v1, v0, v2

    const v1, 0x3f5d07c8    # 0.8634f

    const/16 v2, 0x6b

    aput v1, v0, v2

    const v1, 0x3f5de00d    # 0.8667f

    const/16 v2, 0x6c

    aput v1, v0, v2

    const v1, 0x3f5eb1c4    # 0.8699f

    const/16 v2, 0x6d

    aput v1, v0, v2

    const v1, 0x3f5f837b    # 0.8731f

    const/16 v2, 0x6e

    aput v1, v0, v2

    const v1, 0x3f604ea5    # 0.8762f

    const/16 v2, 0x6f

    aput v1, v0, v2

    const v1, 0x3f611340    # 0.8792f

    const/16 v2, 0x70

    aput v1, v0, v2

    const v1, 0x3f61de6a    # 0.8823f

    const/16 v2, 0x71

    aput v1, v0, v2

    const v1, 0x3f629c78    # 0.8852f

    const/16 v2, 0x72

    aput v1, v0, v2

    const v1, 0x3f636113    # 0.8882f

    const/16 v2, 0x73

    aput v1, v0, v2

    const v1, 0x3f641893    # 0.891f

    const/16 v2, 0x74

    aput v1, v0, v2

    const v1, 0x3f64d6a1    # 0.8939f

    const/16 v2, 0x75

    aput v1, v0, v2

    const v1, 0x3f658e22    # 0.8967f

    const/16 v2, 0x76

    aput v1, v0, v2

    const v1, 0x3f663f14    # 0.8994f

    const/16 v2, 0x77

    aput v1, v0, v2

    const v1, 0x3f66f007    # 0.9021f

    const/16 v2, 0x78

    aput v1, v0, v2

    const v1, 0x3f67a0f9    # 0.9048f

    const/16 v2, 0x79

    aput v1, v0, v2

    const v1, 0x3f684b5e    # 0.9074f

    const/16 v2, 0x7a

    aput v1, v0, v2

    const v1, 0x3f68f5c3    # 0.91f

    const/16 v2, 0x7b

    aput v1, v0, v2

    const v1, 0x3f69999a    # 0.9125f

    const/16 v2, 0x7c

    aput v1, v0, v2

    const v1, 0x3f6a3d71    # 0.915f

    const/16 v2, 0x7d

    aput v1, v0, v2

    const v1, 0x3f6adaba    # 0.9174f

    const/16 v2, 0x7e

    aput v1, v0, v2

    const v1, 0x3f6b7803    # 0.9198f

    const/16 v2, 0x7f

    aput v1, v0, v2

    const v1, 0x3f6c154d    # 0.9222f

    const/16 v2, 0x80

    aput v1, v0, v2

    const v1, 0x3f6cac08    # 0.9245f

    const/16 v2, 0x81

    aput v1, v0, v2

    const v1, 0x3f6d42c4    # 0.9268f

    const/16 v2, 0x82

    aput v1, v0, v2

    const v1, 0x3f6dd2f2    # 0.929f

    const/16 v2, 0x83

    aput v1, v0, v2

    const v1, 0x3f6e6320    # 0.9312f

    const/16 v2, 0x84

    aput v1, v0, v2

    const v1, 0x3f6ef34d    # 0.9334f

    const/16 v2, 0x85

    aput v1, v0, v2

    const v1, 0x3f6f7cee    # 0.9355f

    const/16 v2, 0x86

    aput v1, v0, v2

    const v1, 0x3f70068e    # 0.9376f

    const/16 v2, 0x87

    aput v1, v0, v2

    const v1, 0x3f7089a0    # 0.9396f

    const/16 v2, 0x88

    aput v1, v0, v2

    const v1, 0x3f710cb3    # 0.9416f

    const/16 v2, 0x89

    aput v1, v0, v2

    const v1, 0x3f718fc5    # 0.9436f

    const/16 v2, 0x8a

    aput v1, v0, v2

    const v1, 0x3f720c4a    # 0.9455f

    const/16 v2, 0x8b

    aput v1, v0, v2

    const v1, 0x3f7288ce    # 0.9474f

    const/16 v2, 0x8c

    aput v1, v0, v2

    const v1, 0x3f72fec5    # 0.9492f

    const/16 v2, 0x8d

    aput v1, v0, v2

    const v1, 0x3f7374bc    # 0.951f

    const/16 v2, 0x8e

    aput v1, v0, v2

    const v1, 0x3f73eab3    # 0.9528f

    const/16 v2, 0x8f

    aput v1, v0, v2

    const v1, 0x3f745a1d    # 0.9545f

    const/16 v2, 0x90

    aput v1, v0, v2

    const v1, 0x3f74c986    # 0.9562f

    const/16 v2, 0x91

    aput v1, v0, v2

    const v1, 0x3f7538ef    # 0.9579f

    const/16 v2, 0x92

    aput v1, v0, v2

    const v1, 0x3f75a1cb    # 0.9595f

    const/16 v2, 0x93

    aput v1, v0, v2

    const v1, 0x3f760aa6    # 0.9611f

    const/16 v2, 0x94

    aput v1, v0, v2

    const v1, 0x3f767382    # 0.9627f

    const/16 v2, 0x95

    aput v1, v0, v2

    const v1, 0x3f76d5d0    # 0.9642f

    const/16 v2, 0x96

    aput v1, v0, v2

    const v1, 0x3f77381d    # 0.9657f

    const/16 v2, 0x97

    aput v1, v0, v2

    const v1, 0x3f779a6b    # 0.9672f

    const/16 v2, 0x98

    aput v1, v0, v2

    const v1, 0x3f77f62b    # 0.9686f

    const/16 v2, 0x99

    aput v1, v0, v2

    const v1, 0x3f7851ec    # 0.97f

    const/16 v2, 0x9a

    aput v1, v0, v2

    const v1, 0x3f78a71e    # 0.9713f

    const/16 v2, 0x9b

    aput v1, v0, v2

    const v1, 0x3f78fc50    # 0.9726f

    const/16 v2, 0x9c

    aput v1, v0, v2

    const v1, 0x3f795183    # 0.9739f

    const/16 v2, 0x9d

    aput v1, v0, v2

    const v1, 0x3f79a6b5    # 0.9752f

    const/16 v2, 0x9e

    aput v1, v0, v2

    const v1, 0x3f79f55a    # 0.9764f

    const/16 v2, 0x9f

    aput v1, v0, v2

    const v1, 0x3f7a43fe    # 0.9776f

    const/16 v2, 0xa0

    aput v1, v0, v2

    const v1, 0x3f7a8c15    # 0.9787f

    const/16 v2, 0xa1

    aput v1, v0, v2

    const v1, 0x3f7ad42c    # 0.9798f

    const/16 v2, 0xa2

    aput v1, v0, v2

    const v1, 0x3f7b1c43    # 0.9809f

    const/16 v2, 0xa3

    aput v1, v0, v2

    const v1, 0x3f7b645a    # 0.982f

    const/16 v2, 0xa4

    aput v1, v0, v2

    const v1, 0x3f7ba5e3    # 0.983f

    const/16 v2, 0xa5

    aput v1, v0, v2

    const v1, 0x3f7be76d    # 0.984f

    const/16 v2, 0xa6

    aput v1, v0, v2

    const v1, 0x3f7c2268    # 0.9849f

    const/16 v2, 0xa7

    aput v1, v0, v2

    const v1, 0x3f7c63f1    # 0.9859f

    const/16 v2, 0xa8

    aput v1, v0, v2

    const v1, 0x3f7c9eed    # 0.9868f

    const/16 v2, 0xa9

    aput v1, v0, v2

    const v1, 0x3f7cd35b    # 0.9876f

    const/16 v2, 0xaa

    aput v1, v0, v2

    const v1, 0x3f7d0e56    # 0.9885f

    const/16 v2, 0xab

    aput v1, v0, v2

    const v1, 0x3f7d42c4    # 0.9893f

    const/16 v2, 0xac

    aput v1, v0, v2

    const v1, 0x3f7d70a4    # 0.99f

    const/16 v2, 0xad

    aput v1, v0, v2

    const v1, 0x3f7da512    # 0.9908f

    const/16 v2, 0xae

    aput v1, v0, v2

    const v1, 0x3f7dd2f2    # 0.9915f

    const/16 v2, 0xaf

    aput v1, v0, v2

    const v1, 0x3f7e00d2    # 0.9922f

    const/16 v2, 0xb0

    aput v1, v0, v2

    const v1, 0x3f7e2824    # 0.9928f

    const/16 v2, 0xb1

    aput v1, v0, v2

    const v1, 0x3f7e4f76    # 0.9934f

    const/16 v2, 0xb2

    aput v1, v0, v2

    const v1, 0x3f7e76c9    # 0.994f

    const/16 v2, 0xb3

    aput v1, v0, v2

    const v1, 0x3f7e9e1b    # 0.9946f

    const/16 v2, 0xb4

    aput v1, v0, v2

    const v1, 0x3f7ebee0    # 0.9951f

    const/16 v2, 0xb5

    aput v1, v0, v2

    const v1, 0x3f7edfa4    # 0.9956f

    const/16 v2, 0xb6

    aput v1, v0, v2

    const v1, 0x3f7f0069    # 0.9961f

    const/16 v2, 0xb7

    aput v1, v0, v2

    const v1, 0x3f7f212d    # 0.9966f

    const/16 v2, 0xb8

    aput v1, v0, v2

    const v1, 0x3f7f3b64    # 0.997f

    const/16 v2, 0xb9

    aput v1, v0, v2

    const v1, 0x3f7f559b    # 0.9974f

    const/16 v2, 0xba

    aput v1, v0, v2

    const v1, 0x3f7f6944    # 0.9977f

    const/16 v2, 0xbb

    aput v1, v0, v2

    const v1, 0x3f7f837b    # 0.9981f

    const/16 v2, 0xbc

    aput v1, v0, v2

    const v1, 0x3f7f9724    # 0.9984f

    const/16 v2, 0xbd

    aput v1, v0, v2

    const v1, 0x3f7faace    # 0.9987f

    const/16 v2, 0xbe

    aput v1, v0, v2

    const v1, 0x3f7fb7e9    # 0.9989f

    const/16 v2, 0xbf

    aput v1, v0, v2

    const v1, 0x3f7fcb92    # 0.9992f

    const/16 v2, 0xc0

    aput v1, v0, v2

    const v1, 0x3f7fd8ae    # 0.9994f

    const/16 v2, 0xc1

    aput v1, v0, v2

    const v1, 0x3f7fdf3b    # 0.9995f

    const/16 v2, 0xc2

    aput v1, v0, v2

    const v1, 0x3f7fec57    # 0.9997f

    const/16 v2, 0xc3

    aput v1, v0, v2

    const v1, 0x3f7ff2e5    # 0.9998f

    const/16 v2, 0xc4

    aput v1, v0, v2

    const/16 v1, 0xc5

    aput v3, v0, v1

    const/16 v1, 0xc6

    aput v3, v0, v1

    const/16 v1, 0xc7

    aput v4, v0, v1

    const/16 v1, 0xc8

    aput v4, v0, v1

    sput-object v0, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;->VALUES:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;->VALUES:[F

    invoke-direct {p0, v0}, Landroid/support/v4/view/animation/LookupTableInterpolator;-><init>([F)V

    .line 68
    return-void
.end method


# virtual methods
.method public bridge synthetic getInterpolation(F)F
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/view/animation/LookupTableInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
