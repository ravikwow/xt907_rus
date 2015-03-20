.class final enum Lcom/motorola/simmanager/Utils$ActionMode$1;
.super Lcom/motorola/simmanager/Utils$ActionMode;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/Utils$ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/simmanager/Utils$ActionMode;-><init>(Ljava/lang/String;ILcom/motorola/simmanager/Utils$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "com.motorola.android.simmanager.ACTION_IMPORT"

    return-object v0
.end method
