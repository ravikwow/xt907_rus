.class public Lcom/android/settings/sdencryption/ChooserAdapterMemEncryptionKeyType;
.super Lcom/android/settings/sdencryption/ChooserListAdapter;
.source "ChooserAdapterMemEncryptionKeyType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Landroid/view/View$OnClickListener;
    .param p3, "count"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/sdencryption/ChooserListAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getDesc(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 45
    const v0, 0x7f0b00b4

    :goto_0
    return v0

    .line 39
    :pswitch_0
    const v0, 0x7f0b00c5

    goto :goto_0

    .line 41
    :pswitch_1
    const v0, 0x7f0b00c7

    goto :goto_0

    .line 43
    :pswitch_2
    const v0, 0x7f0b00c9

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTitle(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 31
    const v0, 0x7f0b00b4

    :goto_0
    return v0

    .line 25
    :pswitch_0
    const v0, 0x7f0b00c4

    goto :goto_0

    .line 27
    :pswitch_1
    const v0, 0x7f0b00c6

    goto :goto_0

    .line 29
    :pswitch_2
    const v0, 0x7f0b00c8

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
