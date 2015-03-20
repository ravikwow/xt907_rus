.class Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface$MotoExifInterfaceInternal;
.super Landroid/media/ExifInterface;
.source "MotoExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotoExifInterfaceInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p2, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    iput-object p1, p0, Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface$MotoExifInterfaceInternal;->this$0:Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;

    .line 18
    invoke-direct {p0, p2}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    .line 19
    return-void
.end method
