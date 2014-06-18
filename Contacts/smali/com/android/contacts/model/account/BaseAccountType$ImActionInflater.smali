.class public Lcom/android/contacts/model/account/BaseAccountType$ImActionInflater;
.super Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 659
    const-string v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    const-string v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f0b0153

    .line 664
    if-nez p1, :cond_0

    .line 675
    :goto_0
    :pswitch_0
    return v0

    .line 665
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 666
    :pswitch_1
    const v0, 0x7f0b014b

    goto :goto_0

    .line 667
    :pswitch_2
    const v0, 0x7f0b014c

    goto :goto_0

    .line 668
    :pswitch_3
    const v0, 0x7f0b014d

    goto :goto_0

    .line 669
    :pswitch_4
    const v0, 0x7f0b014e

    goto :goto_0

    .line 670
    :pswitch_5
    const v0, 0x7f0b014f

    goto :goto_0

    .line 671
    :pswitch_6
    const v0, 0x7f0b0150

    goto :goto_0

    .line 672
    :pswitch_7
    const v0, 0x7f0b0151

    goto :goto_0

    .line 673
    :pswitch_8
    const v0, 0x7f0b0152

    goto :goto_0

    .line 665
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
