.class public final Lcom/motorola/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I

.field public static final CameraPreference_summary:I = 0x1

.field public static final CameraPreference_title:I = 0x0

.field public static final CaptureButton:[I

.field public static final CaptureButton_mode:I = 0x0

.field public static final CustomToolbar:[I

.field public static final CustomToolbar_android_allowSingleTap:I = 0x3

.field public static final CustomToolbar_android_animateOnClick:I = 0x6

.field public static final CustomToolbar_android_bottomOffset:I = 0x1

.field public static final CustomToolbar_android_content:I = 0x5

.field public static final CustomToolbar_android_handle:I = 0x4

.field public static final CustomToolbar_android_orientation:I = 0x0

.field public static final CustomToolbar_android_topOffset:I = 0x2

.field public static final GenericSliderSettingPopup:[I

.field public static final GenericSliderSettingPopup_sliderLayout:I = 0x0

.field public static final IconListPreference:[I

.field public static final IconListPreference_feedbackMessage:I = 0x6

.field public static final IconListPreference_feedbackTitle:I = 0x5

.field public static final IconListPreference_feedbackTopicId:I = 0x7

.field public static final IconListPreference_icons:I = 0x3

.field public static final IconListPreference_images:I = 0x4

.field public static final IconListPreference_inUseIcon:I = 0x2

.field public static final IconListPreference_notInUseIcon:I = 0x1

.field public static final IconListPreference_singleIcon:I = 0x0

.field public static final ListPreference:[I

.field public static final ListPreference_defaultValue:I = 0x1

.field public static final ListPreference_entries:I = 0x4

.field public static final ListPreference_entryValues:I = 0x2

.field public static final ListPreference_extraValues:I = 0x3

.field public static final ListPreference_key:I = 0x0

.field public static final SliderPreference:[I

.field public static final SliderPreference_sliderDefaultValue:I = 0x3

.field public static final SliderPreference_sliderKey:I = 0x0

.field public static final SliderPreference_sliderMaxValue:I = 0x2

.field public static final SliderPreference_sliderMinValue:I = 0x1

.field public static final SliderPreference_sliderScale:I = 0x5

.field public static final SliderPreference_sliderStep:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 798
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/R$styleable;->CameraPreference:[I

    .line 839
    new-array v0, v3, [I

    const/high16 v1, 0x7f010000

    aput v1, v0, v2

    sput-object v0, Lcom/motorola/camera/R$styleable;->CaptureButton:[I

    .line 887
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/motorola/camera/R$styleable;->CustomToolbar:[I

    .line 943
    new-array v0, v3, [I

    const v1, 0x7f010016

    aput v1, v0, v2

    sput-object v0, Lcom/motorola/camera/R$styleable;->GenericSliderSettingPopup:[I

    .line 980
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/motorola/camera/R$styleable;->IconListPreference:[I

    .line 1082
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/motorola/camera/R$styleable;->ListPreference:[I

    .line 1161
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/motorola/camera/R$styleable;->SliderPreference:[I

    return-void

    .line 798
    nop

    :array_0
    .array-data 4
        0x7f010001
        0x7f010002
    .end array-data

    .line 887
    :array_1
    .array-data 4
        0x10100c4
        0x1010257
        0x1010258
        0x1010259
        0x101025a
        0x101025b
        0x101025c
    .end array-data

    .line 980
    :array_2
    .array-data 4
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
    .end array-data

    .line 1082
    :array_3
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
    .end array-data

    .line 1161
    :array_4
    .array-data 4
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
