.class Lcom/android/settings/AvailableLicensesActivity$1;
.super Ljava/lang/Object;
.source "AvailableLicensesActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AvailableLicensesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AvailableLicensesActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/AvailableLicensesActivity;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/AvailableLicensesActivity$1;->this$0:Lcom/android/settings/AvailableLicensesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "NOTICE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
