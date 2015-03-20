.class Lcom/motorola/messaging/addressingwidget/EditAddress;
.super Landroid/app/AlertDialog;
.source "EditAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/addressingwidget/EditAddress$OnDoneListener;
    }
.end annotation


# instance fields
.field private final mDoneListener:Lcom/motorola/messaging/addressingwidget/EditAddress$OnDoneListener;


# virtual methods
.method protected handleEnterKeyPress(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/EditAddress;->mDoneListener:Lcom/motorola/messaging/addressingwidget/EditAddress$OnDoneListener;

    invoke-interface {v0, p1}, Lcom/motorola/messaging/addressingwidget/EditAddress$OnDoneListener;->onDone(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected handlePerformCompletion(Ljava/lang/String;I)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/EditAddress;->mDoneListener:Lcom/motorola/messaging/addressingwidget/EditAddress$OnDoneListener;

    invoke-interface {v0, p1, p2}, Lcom/motorola/messaging/addressingwidget/EditAddress$OnDoneListener;->onDone(Ljava/lang/String;I)V

    .line 90
    return-void
.end method
