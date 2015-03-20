.class Lcom/motorola/messaging/activity/MessagingPreferenceActivity$3;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$3;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$3;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    # invokes: Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->clearSearchHistory()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->access$100(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)V

    .line 363
    return-void
.end method
