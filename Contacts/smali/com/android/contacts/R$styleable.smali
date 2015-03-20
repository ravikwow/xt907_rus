.class public final Lcom/android/contacts/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CallLog:[I

.field public static final ContactBrowser:[I

.field public static final ContactListItemView:[I

.field public static final EdgeTriggerView:[I

.field public static final Favorites:[I

.field public static final InterpolatingLayout_Layout:[I

.field public static final Mapping:[I

.field public static final ProportionalLayout:[I

.field public static final TransitionAnimationView:[I

.field public static final VoicemailStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    .line 5854
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/R$styleable;->CallLog:[I

    .line 5947
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/contacts/R$styleable;->ContactBrowser:[I

    .line 6058
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    .line 6518
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/contacts/R$styleable;->EdgeTriggerView:[I

    .line 6564
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010045

    aput v2, v0, v1

    sput-object v0, Lcom/android/contacts/R$styleable;->Favorites:[I

    .line 6615
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/contacts/R$styleable;->InterpolatingLayout_Layout:[I

    .line 6830
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/contacts/R$styleable;->Mapping:[I

    .line 6918
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/contacts/R$styleable;->ProportionalLayout:[I

    .line 6971
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/contacts/R$styleable;->TransitionAnimationView:[I

    .line 7089
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/contacts/R$styleable;->VoicemailStatus:[I

    return-void

    .line 5854
    :array_0
    .array-data 4
        0x7f01003c
        0x7f01003d
        0x7f01003e
        0x7f01003f
        0x7f010040
    .end array-data

    .line 5947
    :array_1
    .array-data 4
        0x7f01001c
        0x7f01001d
        0x7f01001e
    .end array-data

    .line 6058
    :array_2
    .array-data 4
        0x7f01001f
        0x7f010020
        0x7f010021
        0x7f010022
        0x7f010023
        0x7f010024
        0x7f010025
        0x7f010026
        0x7f010027
        0x7f010028
        0x7f010029
        0x7f01002a
        0x7f01002b
        0x7f01002c
        0x7f01002d
        0x7f01002e
        0x7f01002f
        0x7f010030
        0x7f010031
        0x7f010032
        0x7f010033
        0x7f010034
        0x7f010035
        0x7f010036
        0x7f010037
        0x7f010038
        0x7f010039
        0x7f01003a
        0x7f01003b
    .end array-data

    .line 6518
    :array_3
    .array-data 4
        0x7f010005
        0x7f010006
    .end array-data

    .line 6615
    :array_4
    .array-data 4
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
    .end array-data

    .line 6830
    :array_5
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
    .end array-data

    .line 6918
    :array_6
    .array-data 4
        0x7f010013
        0x7f010014
    .end array-data

    .line 6971
    :array_7
    .array-data 4
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
        0x7f010019
        0x7f01001a
        0x7f01001b
    .end array-data

    .line 7089
    :array_8
    .array-data 4
        0x7f010041
        0x7f010042
        0x7f010043
        0x7f010044
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
