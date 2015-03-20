.class Lcom/motorola/simmanager/ImportExportActivity$8;
.super Ljava/lang/Object;
.source "ImportExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/simmanager/ImportExportActivity;->changeUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/simmanager/ImportExportActivity;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/ImportExportActivity;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/motorola/simmanager/ImportExportActivity$8;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 451
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 452
    const/4 v0, 0x1

    .line 454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
