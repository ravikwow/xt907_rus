.class Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;
.super Landroid/database/ContentObserver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 1

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    .line 108
    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/contacts/calllog/CallLogFragment;->access$000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 109
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z
    invoke-static {v0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->access$102(Lcom/android/contacts/calllog/CallLogFragment;Z)Z

    .line 113
    return-void
.end method
