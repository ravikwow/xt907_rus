.class Lcom/android/phone/FdnSetting$3;
.super Ljava/lang/Object;
.source "FdnSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FdnSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/phone/FdnSetting$3;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/phone/FdnSetting$3;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 661
    return-void
.end method
