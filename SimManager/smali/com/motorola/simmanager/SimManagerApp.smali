.class public Lcom/motorola/simmanager/SimManagerApp;
.super Landroid/app/Application;
.source "SimManagerApp.java"


# static fields
.field private static instance:Lcom/motorola/simmanager/SimManagerApp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/motorola/simmanager/SimManagerApp;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/motorola/simmanager/SimManagerApp;->instance:Lcom/motorola/simmanager/SimManagerApp;

    return-object v0
.end method

.method static getIntegerOverlaidResourceId(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 18
    sget-object v0, Lcom/motorola/simmanager/SimManagerApp;->instance:Lcom/motorola/simmanager/SimManagerApp;

    invoke-static {v0, p0}, Lcom/motorola/simmanager/OverlayResources;->getIntegerOverlaidResourceId(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static getStringOverlaidResourceId(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 14
    sget-object v0, Lcom/motorola/simmanager/SimManagerApp;->instance:Lcom/motorola/simmanager/SimManagerApp;

    invoke-static {v0, p0}, Lcom/motorola/simmanager/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 23
    sput-object p0, Lcom/motorola/simmanager/SimManagerApp;->instance:Lcom/motorola/simmanager/SimManagerApp;

    .line 24
    return-void
.end method
