.class Lcom/motorola/messaging/activity/ComposeMessageActivity$38;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 2857
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$38;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 2860
    if-eqz p2, :cond_0

    .line 2861
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->setMmsVcardLocationWarningDialogState(Z)V

    .line 2865
    :goto_0
    return-void

    .line 2863
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->setMmsVcardLocationWarningDialogState(Z)V

    goto :goto_0
.end method
