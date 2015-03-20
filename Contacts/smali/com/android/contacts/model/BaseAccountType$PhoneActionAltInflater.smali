.class public Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionAltInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f0c0159

    .line 601
    if-nez p1, :cond_0

    .line 623
    :goto_0
    :pswitch_0
    return v0

    .line 602
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 623
    const v0, 0x7f0c0152

    goto :goto_0

    .line 603
    :pswitch_1
    const v0, 0x7f0c0153

    goto :goto_0

    .line 604
    :pswitch_2
    const v0, 0x7f0c0154

    goto :goto_0

    .line 605
    :pswitch_3
    const v0, 0x7f0c0155

    goto :goto_0

    .line 606
    :pswitch_4
    const v0, 0x7f0c0156

    goto :goto_0

    .line 607
    :pswitch_5
    const v0, 0x7f0c0157

    goto :goto_0

    .line 608
    :pswitch_6
    const v0, 0x7f0c0158

    goto :goto_0

    .line 610
    :pswitch_7
    const v0, 0x7f0c015a

    goto :goto_0

    .line 611
    :pswitch_8
    const v0, 0x7f0c015b

    goto :goto_0

    .line 612
    :pswitch_9
    const v0, 0x7f0c015c

    goto :goto_0

    .line 613
    :pswitch_a
    const v0, 0x7f0c015d

    goto :goto_0

    .line 614
    :pswitch_b
    const v0, 0x7f0c015e

    goto :goto_0

    .line 615
    :pswitch_c
    const v0, 0x7f0c015f

    goto :goto_0

    .line 616
    :pswitch_d
    const v0, 0x7f0c0160

    goto :goto_0

    .line 617
    :pswitch_e
    const v0, 0x7f0c0161

    goto :goto_0

    .line 618
    :pswitch_f
    const v0, 0x7f0c0162

    goto :goto_0

    .line 619
    :pswitch_10
    const v0, 0x7f0c0163

    goto :goto_0

    .line 620
    :pswitch_11
    const v0, 0x7f0c0164

    goto :goto_0

    .line 621
    :pswitch_12
    const v0, 0x7f0c0165

    goto :goto_0

    .line 622
    :pswitch_13
    const v0, 0x7f0c0166

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 596
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
