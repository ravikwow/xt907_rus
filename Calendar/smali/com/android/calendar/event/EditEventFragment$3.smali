.class Lcom/android/calendar/event/EditEventFragment$3;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EditEventFragment;->displayEditWhichDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventFragment;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment$3;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 640
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment$3;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 641
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 644
    :cond_0
    return-void
.end method
