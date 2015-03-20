.class public Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;
.super Ljava/lang/Object;
.source "MotoExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface$MotoExifInterfaceInternal;
    }
.end annotation


# instance fields
.field private mExifInterfaceInternal:Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface$MotoExifInterfaceInternal;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface$MotoExifInterfaceInternal;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface$MotoExifInterfaceInternal;-><init>(Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;->mExifInterfaceInternal:Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface$MotoExifInterfaceInternal;

    .line 26
    return-void
.end method


# virtual methods
.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;->mExifInterfaceInternal:Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface$MotoExifInterfaceInternal;

    invoke-virtual {v0, p1, p2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
