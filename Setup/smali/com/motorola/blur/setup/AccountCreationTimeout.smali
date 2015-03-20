.class public Lcom/motorola/blur/setup/AccountCreationTimeout;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "AccountCreationTimeout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 23
    :goto_0
    return-void

    .line 19
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 17
    :pswitch_data_0
    .packed-switch 0x7f0c0003
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 14
    return-void
.end method
